function loadConnectWidget() {
  $.ajax('/connect_widget_url', {
    success: function (data) {
      buildConnectWidget(data);
    }
  });
}

function buildConnectWidget(url) {
  var mxConnect = new MXConnect({
    id: 'addAccount',
    isMobileWebView: false,
    url: url,
    onLoad: function () {
      // Add accounts widget successfully loaded
      console.log('On Load');
    },
    onSuccess: function () {
      // Account added successfully
      console.log('On Success');
    }
  });

  mxConnect.load();
}
