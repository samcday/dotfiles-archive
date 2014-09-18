if [ -d $HOME/awscli-saml-auth ]; then
  . $HOME/awscli-saml-auth/bashrc_additions

fi

function atl-awstoken() {
  awstoken -u sday -p $ATL_LDAP_PASS
}
