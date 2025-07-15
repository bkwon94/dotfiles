Use the gitlab CLI `glab` to get all open MRs for this current project.(glab mr list) Use this command exactly as written.

Present them as options to me and then ask which one to review.

Once an MR is selected, thoroughly analyze the MR. Think deeply about the changes made.

<Rules>
- Comments should be concise and to the point.
- Leave comments on the correct files and lines.
- If nitpicking, always prepend the comment with "nit" or "nitpick".
- If providing suggestions, always prepend the comment with "suggestion" or "suggest".
- Please understand the context of the MR by reading the title, description, comments and analyzing the diff
</Rules>
Your review should be in the following format:
<Format>
#Reviewer: Brian Kwon

#Summary

#Comments

### Critical

## Comment 1 - /path/to/file.js

## Comment 2 - /path/to/file.js

### Suggestions

## Comment 1 - /path/to/file.js

## Comment 2 - /path/to/file.js

### Nitpicks

## Comment 1 - /path/to/file.js

## Comment 2 - /path/to/file.js

</Format>

Then, post the review in the MR using glab CLI.

If there are no critical comments, and less than 3 suggestions, approve the MR as well.

<rules>
    - Critical comments are reserved for blocking issues. They must be addressed immediately and must be severe.
    - Critical comments should not be common. If it is not a major blocker, it should be a suggestion.
    - Suggestions are for minor issues that can be addressed without blocking the MR.
    - Nitpicks are for issues that are almost not an issue, but are still worth addressing.
</rules>
