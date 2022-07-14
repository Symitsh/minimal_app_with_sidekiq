class HelloWorldJob < Applicationjob
  queue_as :default

  def perform(*args)
    # Simule une tâche longue et chronophage
    sleep(5)
    # Affiche l'heure actuelle, millisecondes incluses
    p "hello from HelloWorldJob #{Time.now().strftime('%F - %H:%M:%S.%L')}"
  end

end
