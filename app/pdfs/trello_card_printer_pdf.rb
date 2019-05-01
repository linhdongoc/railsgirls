require 'yaml'

class TrelloCardPrinterPdf < Prawn::Document
  include Prawn::View

  def initialize(cards)
    super()
    @cards = cards
    content
  end

  def content
    text "Trello Card Printers", size: 30, style: :bold

    @cards.each do |card|
      start_new_page

      card = YAML.load(card)

      text "Title '#{card['title']}'", size: 20, style: :bold
      move_down 20

      if card['labels'].present?
        text "Labels", style: :bold
        text card['labels'].join(', ')
        move_down 20
      end

      if  card['description'].present?
        text "Description", style: :bold
        text  card['description']
        move_down 20
      end

      if card['checklists'].present?
        card['checklists'].each do |list|
          text list['name'], style: :bold
          text "Checked: #{ list['checked'].join(', ') }" if list['checked'].present?
          text "Unchecked: #{ list['unchecked'].join(', ') }" if list['unchecked'].present?
        end
        move_down 20
      end

      text "URL of the card", style: :bold
      text card['url']
    end

  end
end