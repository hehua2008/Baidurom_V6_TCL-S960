.class public Lcom/android/jrdsettings/remotesecurity/service/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# static fields
.field private static final KILLER:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "LocationService"


# instance fields
.field private GPSEnabled:Z

.field private mCreate:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocation:Landroid/location/Location;

.field mLocationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->GPSEnabled:Z

    .line 24
    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mCreate:Z

    .line 32
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/service/LocationService$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/service/LocationService$1;-><init>(Lcom/android/jrdsettings/remotesecurity/service/LocationService;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/remotesecurity/service/LocationService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->GPSEnabled:Z

    return v0
.end method

.method private disableKiller()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    const-string v0, "LocationService"

    const-string v1, "disableKiller"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private enableKiller()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 192
    const-string v0, "LocationService"

    const-string v1, "enableKiller"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private getLocationListener()Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/service/LocationService$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/service/LocationService$2;-><init>(Lcom/android/jrdsettings/remotesecurity/service/LocationService;)V

    .line 186
    .local v0, locationListener:Landroid/location/LocationListener;
    return-object v0
.end method

.method private locate()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 100
    iput-object v3, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationListener:Landroid/location/LocationListener;

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v11

    .line 103
    .local v11, networkEnabled:Z
    const-string v0, "LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocationProvider.networkEnabled ====== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz v11, :cond_2

    .line 105
    const-string v0, "network"

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->provider:Ljava/lang/String;

    .line 115
    :goto_0
    const-string v0, "LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocation:Landroid/location/Location;

    .line 117
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 118
    new-instance v8, Lcom/android/jrdsettings/remotesecurity/logic/request/LocatingRequest;

    const-string v0, "phone/getLocal"

    invoke-direct {v8, p0, v3, v0}, Lcom/android/jrdsettings/remotesecurity/logic/request/LocatingRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 120
    .local v8, locatingRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/LocatingRequest;
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/android/jrdsettings/remotesecurity/logic/request/LocatingRequest;->setLatitude(D)V

    .line 121
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/android/jrdsettings/remotesecurity/logic/request/LocatingRequest;->setLongitude(D)V

    .line 122
    invoke-virtual {v8}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    .line 123
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 124
    .local v6, latitude:D
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 125
    .local v9, longitude:D
    const-string v0, "LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "latitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "longitude = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v6           #latitude:D
    .end local v8           #locatingRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/LocatingRequest;
    .end local v9           #longitude:D
    :cond_1
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationListener:Landroid/location/LocationListener;

    .line 128
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->provider:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 153
    return-void

    .line 108
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->GPSEnabled:Z

    .line 109
    const-string v0, "LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocationProvider.gpsEnabled ====== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->GPSEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->GPSEnabled:Z

    if-nez v0, :cond_3

    .line 111
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 113
    :cond_3
    const-string v0, "gps"

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->provider:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mCreate:Z

    .line 53
    const-string v0, "LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate :mCreate =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mCreate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    .line 55
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->locate()V

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->GPSEnabled:Z

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 88
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 89
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 63
    const-string v0, "LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand :mCreate =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mCreate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mCreate:Z

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->locate()V

    .line 67
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->mCreate:Z

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public updateWithNewLocation(Landroid/location/Location;)V
    .locals 8
    .parameter "location"

    .prologue
    .line 156
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/logic/request/LocatingRequest;

    const/4 v5, 0x0

    const-string v6, "phone/getLocal"

    invoke-direct {v2, p0, v5, v6}, Lcom/android/jrdsettings/remotesecurity/logic/request/LocatingRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 158
    .local v2, locatingRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/LocatingRequest;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/android/jrdsettings/remotesecurity/logic/request/LocatingRequest;->setLatitude(D)V

    .line 159
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/android/jrdsettings/remotesecurity/logic/request/LocatingRequest;->setLongitude(D)V

    .line 160
    invoke-virtual {v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    .line 161
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 162
    .local v0, latitude:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 163
    .local v3, longitude:D
    const-string v5, "LocationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "latitude: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "longitude:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v5, "LocationService"

    const-string v6, "The location is updated."

    invoke-static {v5, v6}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method
