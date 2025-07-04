module main

import veb

pub struct App {
}

struct Context {
        veb.Context
}

pub fn (mut app App) index() veb.Result {
        return ctx.text('Hello world, from veb on Clever Cloud!')
}

fn main() {
        host := '0.0.0.0'
        port := 8080

        mut app := &App{}
        println('Listening on http://'+host+':'+port.str())

        veb.run_at[App,Context](mut app, host: host, port: port, family: .ip) or {
                println('Error: '+err.str())
        }
}
