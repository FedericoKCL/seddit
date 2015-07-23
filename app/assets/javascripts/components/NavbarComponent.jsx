var React = require("react");
var SubredditsDropdownComponent = require("./SubredditsDropdownComponent.jsx");
var SessionDropdownComponent = require("./SessionDropdownComponent.jsx");

var NavBarComponent = React.createClass({displayName: "Navbar Component",

  render: function() {
    return (
      <header className="navbar navbar-fixed-top navbar-inverse">
        <div className="container">
          <a id='logo' href={this.props.root_path}>seddit</a>
            <nav>
              <ul className="nav navbar-nav navbar-right">
                <li><a href={this.props.root_path}>Home</a></li>
                <SubredditsDropdownComponent {...this.props}/>
                <SessionDropdownComponent {...this.props}/>
              </ul>
            </nav>
        </div>
				</header>
    );
  }
});

module.exports = NavBarComponent;
