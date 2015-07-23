var React = require('react');

var NavBarComponent = React.createClass({displayName: 'Navbar Component',

  render: function() {
    return(
          <header className="my-navbar">
  				  <div className="container">
  				    <a id='logo' href={this.props.root_path}>seddit</a>
  				    <nav>
  				      <ul className="navbar-list">
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
