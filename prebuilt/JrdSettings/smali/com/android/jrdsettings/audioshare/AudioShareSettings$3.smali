.class Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;
.super Ljava/lang/Object;
.source "AudioShareSettings.java"

# interfaces
.implements Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/audioshare/AudioShareSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlnaDeviceAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "deviceUDN"
    .parameter "deviceName"
    .parameter "state"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->requestLocalMute()V

    .line 331
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$300(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 333
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #calls: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->addDevice(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$400(Lcom/android/jrdsettings/audioshare/AudioShareSettings;Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    return-void
.end method

.method public onDlnaDeviceOperationCompleteEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "deviceName"
    .parameter "deviceUDN"
    .parameter "eventId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    const-string v1, "AudioShareSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v1, "AudioShareSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceUDN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v1, "AudioShareSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    packed-switch p3, :pswitch_data_0

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 282
    :pswitch_0
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->clearResetDevicesStatus(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    check-cast v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    .line 285
    .restart local v0       #devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    if-eqz v0, :cond_1

    .line 286
    const-string v1, "AudioShareSettings"

    const-string v2, "null != devicePreference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v0, v5}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setSelectedButton(Z)V

    .line 288
    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setProgressVisiable(Z)V

    .line 290
    :cond_1
    const-string v1, "AudioShareSettings"

    const-string v2, "eventId = PLAYSTATE_PLAYING"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->clearResetDevicesStatus(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    check-cast v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    .line 297
    .restart local v0       #devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {v0, v5}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setSelectedButton(Z)V

    .line 299
    invoke-virtual {v0, v5}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setProgressVisiable(Z)V

    .line 301
    :cond_2
    const-string v1, "AudioShareSettings"

    const-string v2, "eventId = PLAYSTATE_TRANSFERING"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :pswitch_2
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    check-cast v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    .line 307
    .restart local v0       #devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setSelectedButton(Z)V

    .line 309
    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setProgressVisiable(Z)V

    .line 311
    :cond_3
    const-string v1, "AudioShareSettings"

    const-string v2, "eventId = PLAYSTATE_STOPEED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :pswitch_3
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    check-cast v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    .line 316
    .restart local v0       #devicePreference:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;
    if-eqz v0, :cond_4

    .line 317
    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setSelectedButton(Z)V

    .line 318
    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setProgressVisiable(Z)V

    .line 320
    :cond_4
    const-string v1, "AudioShareSettings"

    const-string v2, "eventId = PLAYSTATE_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onDlnaDeviceRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"
    .parameter "deviceUDN"

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 254
    .local v0, preference:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->clearDevice()V

    .line 259
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$300(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->setProgress(Z)V

    .line 262
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->setNoDeviceFoundAdded(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method public onDlnaDeviceRequestListCompleteEvent(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, deviceInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;
    invoke-static {v4}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/jrdsettings/audioshare/AudioShareDeviceCategory;->getAllList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 356
    .local v0, currentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 357
    .local v3, preference:Landroid/preference/Preference;
    new-instance v4, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 358
    const-string v4, ""

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->onDlnaDeviceRemoved(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    .line 362
    .local v1, deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    invoke-virtual {v1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getUdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->getState()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->onDlnaDeviceAdded(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 365
    .end local v1           #deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    :cond_2
    return-void
.end method

.method public onDlnaDeviceStateChangedEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "deviceName"
    .parameter "deviceUDN"
    .parameter "eventId"

    .prologue
    .line 246
    return-void
.end method

.method public onDlnaEvent(II)V
    .locals 0
    .parameter "targetId"
    .parameter "eventId"

    .prologue
    .line 239
    return-void
.end method

.method public onLocalMuteChanged(Z)V
    .locals 2
    .parameter "isLocalMute"

    .prologue
    .line 340
    const-string v0, "AudioShareSettings"

    const-string v1, "onLocalMuteChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$300(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$300(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->setSettingClickedListener(Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;)V

    .line 343
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$300(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->setChecked(Z)V

    .line 344
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mShareSettingsCategory:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$300(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettings$3;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettings;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettings;->mSettingListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettings;->access$500(Lcom/android/jrdsettings/audioshare/AudioShareSettings;)Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->setSettingClickedListener(Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;)V

    .line 346
    :cond_0
    return-void
.end method
