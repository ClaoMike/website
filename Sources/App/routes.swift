import Vapor

func routes(_ app: Application) throws {
    
    app.get { req -> EventLoopFuture<View> in
        return req.view.render(app.directory.publicDirectory + "index.html")
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}
