use changeme::{plugins::*, prelude::*};

fn main() {
    App::new()
        .insert_resource(ClearColor(GOLD.into()))
        .add_plugins(DefaultPlugins)
        .run();
}
