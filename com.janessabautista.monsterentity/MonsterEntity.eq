
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;
	SESprite over;
	int mx;
	int my;
	int time;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width(), h = get_scene_height();
		
		rsc.prepare_image("gameover", "go", w, h);
		rsc.prepare_image("mike", "mike", w*0.10, h*0.20);

		monster = add_sprite_for_image(SEImage.for_resource("mike"));
		mx = Math.random(0,w);
		my = Math.random(0,h);
	    monster.move(mx, my);
		time = Math.random(4,15);
	}

	public void tick(TimeVal now, double delta) {
		var px = MainScene.px;
		var py = MainScene.py;
	
		if(mx < px) {
			mx = mx + Math.random(time/-4, time);
		}

		else if(mx > px) {
			mx = mx - Math.random(time/-4, time);
		}

		if(my < py) {
			my = my + Math.random(time/-4, time);
		}

		else if(my > py) {
			my = my -  Math.random(time/-4, time);
		}
		
	    if(mx==px && my==py) {
			over = add_sprite_for_image(SEImage.for_resource("gameover"));
	    	over.move(0, 0);
        }
		monster.move(mx,my);
	}

	public void cleanup() {
		base.cleanup();
	}
}
