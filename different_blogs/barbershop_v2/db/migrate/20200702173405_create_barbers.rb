class CreateBarbers < ActiveRecord::Migration[6.0]
  def change
	create_table :barbers do |t|
  		t.text :name

  		t.timestamps

  	end  	

  	Barber.create :name => 'Сергей Ц.'
  	Barber.create :name => 'Виктор К.'
  	Barber.create :name => 'Ульяна В.'


  end
end
