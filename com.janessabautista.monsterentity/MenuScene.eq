
/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MenuScene : SEScene
{

	public static SESprite cloud;
	SESprite play;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width(), h = get_scene_height();
		rsc.prepare_image("mycloud", "cloud", w, h);
		cloud = add_sprite_for_image(SEImage.for_resource("mycloud"));
		cloud.move(0,0);

		rsc.prepare_image("play", "play", w*0.4, h*0.6);
		play = add_sprite_for_image(SEImage.for_resource("play"));
		play.move(w*0.35, h*0.2);
		
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
			play.set_alpha(0);
			switch_scene(new MainScene());
	}
	
	public void cleanup() {
		base.cleanup();
	}
}
