.class Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory$1;
.super Ljava/lang/Object;
.source "AudioShareSettingCategory.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingClickedListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;)Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    const v0, 0x7f0b001a

    if-ne p2, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingClickedListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;)Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;->speakerOnly()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->mSettingClickedListener:Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;->access$000(Lcom/android/jrdsettings/audioshare/AudioShareSettingCategory;)Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/jrdsettings/audioshare/ISettingClickedCallBack;->speakerAndPhone()V

    goto :goto_0
.end method
