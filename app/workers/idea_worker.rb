class IdeaAddWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  require 'csv'

  def perform(csv_path)
    CSV.foreach((csv_path), headers: true) do |idea|
      Idea.create(
        name: idea[1],
        description: idea[2]
      )
    end
  end
end

class IdeaRemoveWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    #Idea.destroy_all
  end
end
