.class public interface abstract Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
.super Ljava/lang/Object;
.source "OnDlnaEventListener.java"


# virtual methods
.method public abstract onDlnaDeviceAdded(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onDlnaDeviceOperationCompleteEvent(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onDlnaDeviceRemoved(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDlnaDeviceRequestListCompleteEvent(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDlnaDeviceStateChangedEvent(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onDlnaEvent(II)V
.end method

.method public abstract onLocalMuteChanged(Z)V
.end method
