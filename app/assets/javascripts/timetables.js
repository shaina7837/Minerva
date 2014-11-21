 $('.clockpicker').clockpicker()
        .find('input').change(function(){
                // TODO: time changed
                console.log(this.value);
        });

