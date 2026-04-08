[![Lina Grace Jay CI](https://github.com/ln158/Acebook-on-AWS/actions/workflows/ci.yml/badge.svg)](https://github.com/ln158/Acebook-on-AWS/actions/workflows/ci.yml)

# Acebook

This is a Node.js template for the Acebook engineering project.

It uses:

- [Express](https://expressjs.com/) web framework for Node.js.
- [Nodemon](https://nodemon.io/) to reload the server automatically.
- [Handlebars](https://handlebarsjs.com/) to render view templates.
- [Mongoose](https://mongoosejs.com) to model objects in MongoDB.
- [ESLint](https://eslint.org) for linting.
- [Jest](https://jestjs.io/) for testing.
- [Cypress](https://www.cypress.io/) for end-to-end testing.

## Card wall

[Trello Board](https://trello.com/b/LEFXNnhW/acebook-aws-week-3)

## Quickstart

### Install Node.js

1. Install Node Version Manager (NVM)
   ```
   brew install nvm
   ```
   Then follow the instructions to update your `~/.bash_profile`.

[comment by Jay]: Follow these steps to finish the installation:
 
 => Create the working directory
Run this in your terminal:

```bash

mkdir ~/.nvm
```

=> Update your Profile
Since modern Macs use Zsh by default (not Bash), you likely need to update ~/.zshrc. 

Open the file: nano ~/.zshrc
    Paste these lines at the very bottom:
    
    export NVM_DIR="$HOME/.nvm"
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
   

Press Ctrl+O once done, then Enter to save. Press Ctrl+X to exit. 

=> Refresh and Verify:
Restart your terminal (or run source ~/.zshrc) and check if it works: 
```bash

nvm --version
```
** If you see a version number, you're good to go! You can proceed with nvm install 23 and the rest of your Quickstart guide.** 

   ---
2. Open a new terminal
3. Install the latest version of [Node.js](https://nodejs.org/en/), currently 23.
   ```
   nvm install 23
   ```

### Set up your project

1. Click "Use this template" to create a copy of this repo on your GitHub account
2. Rename your repo to `acebook-<team name>
3. Clone your repo to your local machine
4. Install Node.js dependencies
   ```
   npm install
   ```
5. Install an ESLint plugin for your editor. For example: [linter-eslint](https://github.com/AtomLinter/linter-eslint) for Atom.
[Comment by Jay]: Slightly confusing here. Atom is a code editor but none of us using Atom for this project as far as i know. If you're using VS Code then Search for ESLint (published by Microsoft) and click Install.
[Optional]: 
Enable Auto-Fix on Save for ESLint:

    Open your VS Code settings (Cmd + ,).
    Search for "Code Actions On Save".
    Click "Edit in settings.json" and add:
   ```
    "editor.codeActionsOnSave": {
        "source.fixAll.eslint": true
    }

Thats it for step 5! Proced to the next step. 

6. Install MongoDB
   ```
   brew tap mongodb/brew
   brew install mongodb-community@7.0
   ```
   *Note:* If you see a message that says `If you need to have mongodb-community@7.0 first in your PATH, run:`, follow the instruction. Restart your terminal after this.
7. Start MongoDB
   ```
   brew services start mongodb-community@7.0
   ```

### Start

1. Start the server
   ```
   npm start
   ```
2. Browse to [http://localhost:3000](http://localhost:3000)

#### Start test server

The server must be running locally with test configuration for the
integration tests to pass.

```
npm run start:test
```

This starts the server on port `3030` and uses the `acebook_test` MongoDB database,
so that integration tests do not interact with the development server.

### Test

- Run all tests
  ```
  npm test
  ```
- Run a check
  ```bash
  npm run lint              # linter only
  npm run test:unit         # unit tests only
  npm run test:integration  # integration tests only
  ```

## MongoDB Connection Errors?

Some people occasionally experience MongoDB connection errors when running the tests or trying to use the application. Here are some tips which might help resolve such issues.

- Check that MongoDB is installed using `mongo --version`
- Check that it's running using `brew services list`

If you have issues that are not resolved by these tips, please reach out to a coach and, once the issue is resolved, we can add a new tip!
