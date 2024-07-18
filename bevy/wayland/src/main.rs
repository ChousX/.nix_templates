use changeme::{plugins::*, prelude::*};

fn main() {
    App::new()
        .insert_resource(ClearColor(GOLD.into()))
        .add_plugins(DefaultPlugins.set(WindowPlugin{
            primary_window: Some(Window{ title: APP_NAME.into(), ..default()}),
            ..default()
        }))
        .run();
}
