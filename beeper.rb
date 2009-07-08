Shoes.app(:title => "Beeeeper", :resizable => false, :height => 300)  {
  background white 
  stack(:margin => 30) {
    image 'clock.jpg'
#    @b1 = button ("Standard session", :left => 320, :top => 50)      
    @b1 = button ("Let's rock this!", :left => 320, :top => 100)  
    @b2 = button ("Mini-break time!", :left => 320, :top => 150)

#    time_interval = [1200, 300, 1200, 300, 1200, 300, 1200]
    @v = video "/Users/Marianna/devel/src/shoes/beeper/Nice_Sound.mp3"  

=begin    
    @b1.click { 
      a = animate 10 do
        m = time_interval.shift 
      
        if m == 300 
          @v.play
          alert "Time's up! Why don't you take a break?"
        else 
          @v.play
          alert "Work! Work! Work!"
        end    
      
        sleep m
      
        if time_interval.empty?
          a.remove
          alert "Session's over! Good job! You're a hero!"
        end  
      end
    } 
=end    

    @b1.click {
      alert "Let's rock this!" 
      timer(1200) {
        @v.play
        alert "Break time!"    
      }
    }  
    
    @b2.click {
      alert "Coffee break :D" 
      timer(300) {
        @v.play
        alert "Back to work!"
      }          
    }            
  }
}

