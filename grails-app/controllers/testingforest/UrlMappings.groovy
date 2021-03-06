package testingforest

class UrlMappings {

    static mappings = {
        //TestCase controller uri
        get "/project/$projectId/testCase/list"(controller: "testCase", action: "list")
        get "/project/$projectId/testCase/create"(controller: "testCase", action: "create")
        post "/testCase/save"(controller: "testCase", action: "save")
        get "/testCase/show/$testCaseId"(controller: "testCase", action: "show")
        get "/testCase/edit/$testCaseId"(controller: "testCase", action: "edit")
        put "/testCase/update"(controller: "testCase", action: "update")
        delete "/testCase/delete/$testCaseId"(controller: "testCase", action: "delete")

        //TestCaseDocument controller uri
        get "/project/$projectId/testCaseDocument/downloadDocument/$testCaseId"(controller: "testCaseDocument", action:"download")

        //Feed controller uri
        get "/feed/list"(controller: "feed", action: "list")

        //User controller uri
        get "/user/index"(controller: "user", action: "index")
        get "/user/log_in"(controller: "user", action: "log_in")
        post "/user/authenticate"(controller:  "user", action: "authenticate")
        get "/user/logout"(controller: "user", action: "logout")
        get "/user/show/$id"(controller: "user", action: "show")
        get "/user/create"(controller: "user", action: "create")
        get "/user/$link "(controller: "user", action: "emailConfirmed")
        post "/user/save"(controller: "user", action: "save")
        get "/user/edit/$userId"(controller: "user", action: "edit")
        put "/user/update"(controller: "user", action: "update")
        delete "/user/delete/$id"(controller: "user", action: "delete")
        get "/user/showInfo"(controller: "user", action: "showInfo")
        delete "/user/deleteCurrentUser" (controller: "user", action: "deleteCurrentUser")

        //Project controller uri
        get "/project/$projectId/addUserProject"(controller: "project", action: "addUserProject")
        post "/project/addingUser"(controller: "project", action: "addingUser")
        get "/project/index"(controller: "project", action: "index")
        get "/project/show/$projectId"(controller: "project", action: "show")
        get "/project/create"(controller: "project", action: "create")
        post "/project/save"(controller: "project", action: "save")
        delete "/project/delete/$projectId"(controller: "project", action: "delete")
        put "/project/leaveProject/$projectId"(controller: "project", action: "leaveProject")
        get "/project/edit/$projectId"(controller: "project", action: "edit")
        put "/project/update"(controller: "project", action: "update")

        //Diagnostic controller uri
        get "/diagnostics/index"(controller: "diagnostics", action: "index")
        //Old testcase deletion Scheduler
        get "/oldTestCase/delete" (controller: "oldTestCase", action: "delete")
        /*
        //Init version
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        */

        "/"(controller: "user", action: "log_in")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
