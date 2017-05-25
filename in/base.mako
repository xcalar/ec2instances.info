<!DOCTYPE html>

<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Amazon EC2 Instance Comparison</title>
    <link rel="stylesheet" href="/default.css" media="screen">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css" media="screen">
    <link rel="icon" type="image/png" href="/favicon.png">
  </head>

  <body class="ec2instances">
    <div class="page-header">

      <%block name="header"/>

      <p class="pull-right label label-info">Last Update: ${generated_at}</p>
      <ul class="nav nav-tabs">
        <li role="presentation" class="${'active' if self.attr.active_ == 'ec2' else ''}"><a href="/">EC2</a></li>
        <li role="presentation" class="${'active' if self.attr.active_ == 'rds' else ''}"><a href="/rds/">RDS</a></li>
      </ul>
    </div>

    <div class="clear-fix"></div>

    ${self.body()}

    <div class="well">
      <p>
        <strong>Why?</strong>
        Because it's frustrating to compare instances using Amazon's own <a href="http://aws.amazon.com/ec2/instance-types/" target="_blank">instance type</a>, <a href="http://aws.amazon.com/ec2/pricing/" target="_blank">pricing</a>, and other pages.
      </p>
      <p>
        <strong>Who?</strong>
        It was started by <a href="http://twitter.com/powdahound" target="_blank">@powdahound</a>, contributed to by <a href="https://github.com/powdahound/ec2instances.info/contributors" target="_blank">many</a>, and awaits your improvements <a href="https://github.com/powdahound/ec2instances.info" target="_blank">on GitHub</a>.
      </p>
      <p>
        <strong>How?</strong>
        Data is scraped from multiple pages on the AWS site. This was last done at ${generated_at}.
      </p>

      <p class="bg-warning">
        <strong>Warning:</strong> This site is not maintained by or affiliated with Amazon. The data shown is not guaranteed to be accurate or current. Please <a href="http://github.com/powdahound/ec2instances.info/issues">report issues</a> you see.
      </p>

    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.2.4/js/buttons.flash.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.2.4/js/buttons.html5.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.2.4/js/buttons.print.min.js"></script>
    <script src="/store/store.js" type="text/javascript" charset="utf-8"></script>
    <script src="/default.js" type="text/javascript" charset="utf-8"></script>
  </body>
</html>
