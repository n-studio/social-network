import { Application } from "stimulus"
import { Alert } from "tailwindcss-stimulus-components"

const application = Application.start()
application.register('alert', Alert)
