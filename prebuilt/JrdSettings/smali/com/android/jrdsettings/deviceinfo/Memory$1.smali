.class Lcom/android/jrdsettings/deviceinfo/Memory$1;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/Memory$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 159
    const-string v10, "MemorySettings"

    const-string v11, "Receive dynamic sd swap broadcast"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v10, p0, Lcom/android/jrdsettings/deviceinfo/Memory$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #getter for: Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v10}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$000(Lcom/android/jrdsettings/deviceinfo/Memory;)Landroid/os/storage/StorageManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 162
    .local v7, newVolumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v7

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v9, v0, v4

    .line 164
    .local v9, volume:Landroid/os/storage/StorageVolume;
    iget-object v10, p0, Lcom/android/jrdsettings/deviceinfo/Memory$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #getter for: Lcom/android/jrdsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$100(Lcom/android/jrdsettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4           #i$:I
    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 165
    .local v2, category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    if-eqz v9, :cond_0

    invoke-virtual {v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 166
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 168
    invoke-virtual {v2, v9}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->setStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 169
    invoke-virtual {v2}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updateStorageVolumePrefCategory()V

    goto :goto_1

    .line 175
    .end local v2           #category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_1
    iget-object v10, p0, Lcom/android/jrdsettings/deviceinfo/Memory$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #getter for: Lcom/android/jrdsettings/deviceinfo/Memory;->mStorageWritePathGroup:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-static {v10}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$200(Lcom/android/jrdsettings/deviceinfo/Memory;)[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    move-result-object v1

    .local v1, arr$:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v8, v1, v3

    .line 176
    .local v8, pref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 177
    iget-object v10, p0, Lcom/android/jrdsettings/deviceinfo/Memory$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 162
    .end local v8           #pref:Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 182
    .end local v1           #arr$:[Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;
    .end local v6           #len$:I
    .end local v9           #volume:Landroid/os/storage/StorageVolume;
    :cond_4
    iget-object v10, p0, Lcom/android/jrdsettings/deviceinfo/Memory$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #calls: Lcom/android/jrdsettings/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V
    invoke-static {v10}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$300(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    .line 185
    iget-object v10, p0, Lcom/android/jrdsettings/deviceinfo/Memory$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #calls: Lcom/android/jrdsettings/deviceinfo/Memory;->resetInstallLocation(Landroid/content/Intent;[Landroid/os/storage/StorageVolume;)V
    invoke-static {v10, p2, v7}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$400(Lcom/android/jrdsettings/deviceinfo/Memory;Landroid/content/Intent;[Landroid/os/storage/StorageVolume;)V

    .line 186
    return-void
.end method
