// background.js

//let color = '#3aa757';

/// One-time initialization
/// https://developer.chrome.com/docs/extensions/reference/runtime/#event-onInstalled
/// https://developer.chrome.com/docs/extensions/reference/contextMenus/
chrome.runtime.onInstalled.addListener(() => {
  //chrome.storage.sync.set({ color });
  //console.log('Default background color set to %cgreen', `color: ${color}`);
  /*
  chrome.contextMenus.create({
    "id": "sampleContextMenu",
    "title": "Sample Context Menu",
    "contexts": ["selection"]
  });
  */
  // chrome.runtime.onMessage.removeListener(event);
});

function _reddenPage() {
  document.body.style.backgroundColor = 'red';
}

/// Packages list
function _onPackages(tabId) {
  console.info(`Packages list`);
}

/// Package
function _onPackage(tabId, packageName) {
  console.info(`Package: "${packageName}"`);
  if (packageName === "get") {
    chrome.scripting.executeScript({
      target: { tabId: tabId },
      function: _reddenPage
    });
  } 
}

const _pubRoute = {
  url: [
    {
      hostSuffix: 'pub.dev'
    }
  ]
}

function _pubLoaded(details) {
  const url = new URL(details.url);
  if (url.hostname !== 'pub.dev') return;
  const path = url.pathname.split('/');
  if (path.length > 1 && path[1] === 'packages') {
    if (path.length === 2) {
      _onPackages(details.tabId);
    } else {
      _onPackage(details.tabId, path[2].toLowerCase());
    }
  }
}

chrome.webNavigation.onCommitted.addListener(_pubLoaded, _pubRoute);
