function iPod()
{

};

iPod.prototype.selectSong = function()
{
    PhoneGap.exec('iPodCommand.selectSong');

};

iPod.prototype.playSong = function()
{


};

iPod.install = function()
{
    if(!window.plugins)
    {
        window.plugins = {};	
    }

    window.plugins.iPod = new iPod();
    return window.plugins.iPod;
};

PhoneGap.addConstructor(iPod.install);

