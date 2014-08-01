.class Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference$1;
.super Ljava/lang/Object;
.source "AudioShareDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->setSelected()V

    .line 110
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mIsSelected:Z
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->access$000(Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mSelectedCallback:Lcom/android/jrdsettings/audioshare/IDeviceSelectedCallback;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->mDeviceUDN:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;->access$100(Lcom/android/jrdsettings/audioshare/AudioShareDevicePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/jrdsettings/audioshare/IDeviceSelectedCallback;->onDeviceSelected(Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method
