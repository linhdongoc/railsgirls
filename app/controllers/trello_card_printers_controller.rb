require 'nokogiri'

class TrelloCardPrintersController < ApplicationController
  def index
    base_url = "https://trello.com"
    html = `curl #{base_url}/b/0dbvNFHt/coding-test`
    doc = Nokogiri::HTML(html)
    card_urls = doc.css('li[itemtype="http://schema.org/ListItem"] a[href]').map do |link|
      base_url + link['href']
    end

    list_items = []
    card_urls.each do |url|
      list_items << fetch_data_from(url)
    end

    @cards = list_items
  end

  def fetch_data_from(url)
    html = `curl #{url}`
    doc = Nokogiri::HTML(html)
    {
        title: doc.css('h1[itemprop="name"]').text,
        description: doc.css('div[itemprop="description"] p').text,
        labels: doc.css('li[itemprop="keywords"]').map(&:text),
        checklists: checklists(doc),
        url: url
    }
  end

  def checklists(doc)
    list = []
    item_list = doc.css('div[itemtype="http://schema.org/ItemList"]')
    item_list.each do |item|
      list << {
          name: item.css('h3').text,
          checked: item.css('input[checked] ~ span').map(&:text),
          unchecked: item.css('input[type="checkbox"] ~ span').map(&:text) - item.css('input[checked] ~ span').map(&:text)
      }
    end
    list
  end

  def generate_pdfs
    if params[:cards]
      pdf = TrelloCardPrinterPdf.new(params[:cards])
      send_data pdf.render,
                filename: "trello_card_printers.pdf",
                type: 'application/pdf',
                disposition: 'inline'
    else
      redirect_to action: 'index'
    end

  end
end
