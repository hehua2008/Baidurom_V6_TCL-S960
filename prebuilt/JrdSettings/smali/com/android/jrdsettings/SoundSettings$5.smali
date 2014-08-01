.class Lcom/android/jrdsettings/SoundSettings$5;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/jrdsettings/SoundSettings$5;->this$0:Lcom/android/jrdsettings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 463
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$5;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$200(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$5;->this$0:Lcom/android/jrdsettings/SoundSettings;

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings$5;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/jrdsettings/SoundSettings;->access$000(Lcom/android/jrdsettings/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/jrdsettings/SoundSettings;->updateRingtoneName(ILandroid/content/Context;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/jrdsettings/SoundSettings;->access$100(Lcom/android/jrdsettings/SoundSettings;ILandroid/content/Context;I)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$5;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$400(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$5;->this$0:Lcom/android/jrdsettings/SoundSettings;

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings$5;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/jrdsettings/SoundSettings;->access$000(Lcom/android/jrdsettings/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/jrdsettings/SoundSettings;->updateRingtoneName(ILandroid/content/Context;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/jrdsettings/SoundSettings;->access$100(Lcom/android/jrdsettings/SoundSettings;ILandroid/content/Context;I)V

    .line 471
    :cond_1
    return-void
.end method
