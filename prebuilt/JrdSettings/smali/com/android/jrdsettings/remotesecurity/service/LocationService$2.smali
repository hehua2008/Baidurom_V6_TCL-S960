.class Lcom/android/jrdsettings/remotesecurity/service/LocationService$2;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/remotesecurity/service/LocationService;->getLocationListener()Landroid/location/LocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/service/LocationService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/service/LocationService;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService$2;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 171
    const-string v0, "LocationService"

    const-string v1, "The location is changed."

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService$2;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LocationService;

    invoke-virtual {v0, p1}, Lcom/android/jrdsettings/remotesecurity/service/LocationService;->updateWithNewLocation(Landroid/location/Location;)V

    .line 174
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/LocationService$2;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LocationService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 175
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 178
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 181
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 184
    return-void
.end method
