brew install polipo

ln -sfv /usr/local/opt/polipo/*.plist ~/Library/LaunchAgents

vi /usr/local/opt/polipo/homebrew.mxcl.polipo.plist
```
    <array>
        <string>/usr/local/opt/polipo/bin/polipo</string>
        <string>socksParentProxy=localhost:1080</string>
    </array>
```

launchctl load ~/Library/LaunchAgents/homebrew.mxcl.polipo.plist

curl ip.sb