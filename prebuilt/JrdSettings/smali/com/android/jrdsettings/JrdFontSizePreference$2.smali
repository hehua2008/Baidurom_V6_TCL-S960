.class Lcom/android/jrdsettings/JrdFontSizePreference$2;
.super Ljava/lang/Object;
.source "JrdFontSizePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/JrdFontSizePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/JrdFontSizePreference;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/JrdFontSizePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/jrdsettings/JrdFontSizePreference$2;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference$2;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    .local v1, fontInfo:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "jrd_font_size"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 102
    :sswitch_0
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference$2;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$500(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 105
    :sswitch_1
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference$2;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$500(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 108
    :sswitch_2
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference$2;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$500(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 111
    :sswitch_3
    iget-object v2, p0, Lcom/android/jrdsettings/JrdFontSizePreference$2;->this$0:Lcom/android/jrdsettings/JrdFontSizePreference;

    #getter for: Lcom/android/jrdsettings/JrdFontSizePreference;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/jrdsettings/JrdFontSizePreference;->access$500(Lcom/android/jrdsettings/JrdFontSizePreference;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x7f0b00e6 -> :sswitch_0
        0x7f0b00e9 -> :sswitch_1
        0x7f0b00ec -> :sswitch_2
        0x7f0b00ef -> :sswitch_3
    .end sparse-switch
.end method
