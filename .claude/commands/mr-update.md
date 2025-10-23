Use the gitlab CLI `glab`, update an MR for this current branch inside current project.

Please update the description based on any recent changes made.

Also, remove the draft status and add the following reviewers if not already present:

- hai.huynhlam
- buoywizard
- olivia.clark

Description should be in this format:

# Purpose

# Changes

The purpose is:

- The primary purpose of the MR. This should be a clear and concise description of what the MR is for.

Changes are:
The most important/relevant changes made in this MR. You must follow these guidelines:

- Do not list out every change but rather the most important ones that align with the purpose.
- Changes should be in the form of a list.
- Each item should have the code file path and a description of the change.
- Each item can optionally have code line numbers or ranges as code that should be highlighted and reviewed.

Here is an example:

- **src/main.py** - Add a new function to calculate the factorial of a number.

It is critical the description is only updated based on changes I(brianbuoy) have made in this branch.

Triple check the description follows the format and is accurate.

At the end of the task, list out all commands that were run to update this MR.
