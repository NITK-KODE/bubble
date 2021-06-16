
	document.addEventListener( 'DOMContentLoaded', function () {
		let project_type_ele = document.getElementById("project_type");
		let splide = new Splide( '.splide' , {
            gap:"1em"
        }).mount();

		let project_types = ["Completed" , "Ongoing" , "Future"];
		splide.on('active' , (Slide)=>{
			console.log(Slide.index);
			project_type_ele.textContent = project_types[Slide.index]
		});


	} );
