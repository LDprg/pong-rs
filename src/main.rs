use bevy::prelude::*;

fn hello_world() {
    println!("hello world1!");
}

fn main() {
    App::new()
        .add_plugins(DefaultPlugins)
        .add_systems(Update, hello_world)
        .run();
}