# Derpibooru Tags Autocompletion for A1111

*Tags Last Updated: 2024-07-04*


There's no longer need for this as, apparently, the extension has added native support for Derpibooru tags a while back, and recently my PR got merged, bringing up-to-date tag data (as of 2024-07-04) and tag aliases. All you need to do is update extensions in A1111/Forge. I'll put the scripts/queries I used in this repo just so I don't forget about them when it's time for the next update :)

⚠️ **NOTE** If you had this installed and have not reinstalled A1111/Forge since then, you're probably wondering why your derpi tag coloration is all messed up. Kind of a long technical story, but to fix it you should:

1. go to `Settings -> Tag Autocomplete`
2. Scroll all the way down until you see the big "Configure colors..." text box and replace "derpibooru" section with this:
```json
    "derpibooru": {
        "-1": ["red", "maroon"],
        "0": ["#60d160", "#3d9d3d"],
        "1": ["#fff956", "#918e2e"],
        "3": ["#fd9961", "#a14c2e"],
        "4": ["#cf5bbe", "#6c1e6c"],
        "5": ["#3c8ad9", "#1e5e93"],
        "6": ["#a6a6a6", "#555555"],
        "7": ["#47abc1", "#1f6c7c"],
        "8": ["#7871d0", "#392f7d"],
        "9": ["#df3647", "#8e1c2b"],
        "10": ["#c98f2b", "#7b470e"],
        "11": ["#e87ebe", "#a83583"]
    }
```
or this if you want tag colors to be exactly as they are on derpi (they're a bit too low contrast for default gradio themes, so see if it works for you):
```json
    "derpibooru": {
        "-1": ["red", "maroon"],
        "0": ["#6f8f0e", "#4aa158"],
        "1": ["#998e1a", "#b9b541"],
        "3": ["#8b552f", "#b16b50"],
        "4": ["#9852a3", "#b157b7"],
        "5": ["#267ead", "#418dd9"],
        "6": ["#4e4e4e", "#b8b8b8"],
        "7": ["#2d8677", "#4aaabf"],
        "8": ["#393f85", "#6f66d6"],
        "9": ["#ad263f", "#d45460"],
        "10": ["#c24523", "#d49b39"],
        "11": ["#bb5496", "#cc8eb5"]
    }
```
3. hit the 🔁 button underneath the textbox
4. hit the `apply settings` at the very top
