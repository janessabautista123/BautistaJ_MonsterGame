
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	public static int px;
	public static int py;
	SEEntity player;
	SEEntity monster;
	int i;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		AudioClipManager.prepare("minion");
	
		MenuScene.cloud = add_sprite_for_image(SEImage.for_resource("mycloud"));
		MenuScene.cloud.move(0,0);

		player = add_entity(new PlayerEntity());
		for(i = 0; i < Math.random(5, 15); i++) {	
		monster = add_entity(new MonsterEntity());
		}
	}

	public void on_pointer_move(SEPointerInfo pi) {
		px = pi.get_x();
		py = pi.get_y();
		AudioClipManager.play("minion");
	}

	public void cleanup() {
		base.cleanup();
	}
}