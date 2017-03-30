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
    onSuccess: function (guids) {
      // Account added successfully
      console.log('On Success');
      $.ajax({
        method: "POST",
        url: "/harvest_aggregated_data/" + guids.member_guid
      });
    }
  });

  mxConnect.load();
}
