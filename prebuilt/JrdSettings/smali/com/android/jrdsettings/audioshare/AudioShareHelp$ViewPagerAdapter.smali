.class Lcom/android/jrdsettings/audioshare/AudioShareHelp$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "AudioShareHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/AudioShareHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/AudioShareHelp;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareHelp;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/audioshare/AudioShareHelp;Lcom/android/jrdsettings/audioshare/AudioShareHelp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/AudioShareHelp$ViewPagerAdapter;-><init>(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 168
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 194
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareHelp;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mImageResIds:[I
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->access$400(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 162
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareHelp;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mViews:Ljava/util/List;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->access$500(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/AudioShareHelp$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareHelp;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareHelp;->mViews:Ljava/util/List;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/AudioShareHelp;->access$500(Lcom/android/jrdsettings/audioshare/AudioShareHelp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 173
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 179
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 189
    return-void
.end method
