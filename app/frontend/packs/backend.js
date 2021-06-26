import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"    // stimulus.js

import "scripts/shared"    // js
import "scripts/backend" // js

import "styles/shared"
import "styles/backend" // scss