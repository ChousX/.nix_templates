pub use bevy::prelude::*;

pub mod prelude {
    
}

pub struct changemePlugin;
impl Plugin for changemePlugin{
    fn name(&self) -> &str {
        "changeme"
    }

    fn build(&self, app: &mut App) {
        
    }
}

