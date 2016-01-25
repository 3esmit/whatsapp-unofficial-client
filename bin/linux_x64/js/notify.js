
    if (process.platform === 'linux') {
        window.Notification = function (title, data) {
            gui.Window.get().requestAttention(1);
       //    if (callback != null) {
             spawn('notify-send', ['-i', "skype.png", "Skype Desktop", "callback" ]);  
       //     }
       //     else {
       //    spawn('notify-send', ['-i', "skype.png", title, data.body ]);  
       //     }
       // };
      
    };
}
    window.Notification.permission = 'granted'; 

   
   
 var __dirname = document.currentScript.src.slice(7, document.currentScript.src.lastIndexOf('.js'));
    console.log(__dirname + " script successfully loaded"); 
