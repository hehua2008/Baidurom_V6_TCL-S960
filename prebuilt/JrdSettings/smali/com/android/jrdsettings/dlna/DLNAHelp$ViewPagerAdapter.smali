.class Lcom/android/jrdsettings/dlna/DLNAHelp$ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DLNAHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/dlna/DLNAHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/dlna/DLNAHelp;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/dlna/DLNAHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNAHelp$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/dlna/DLNAHelp;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/dlna/DLNAHelp;Lcom/android/jrdsettings/dlna/DLNAHelp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/dlna/DLNAHelp$ViewPagerAdapter;-><init>(Lcom/android/jrdsettings/dlna/DLNAHelp;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 172
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 198
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/dlna/DLNAHelp;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAHelp;->mImageResIds:[I
    invoke-static {v0}, Lcom/android/jrdsettings/dlna/DLNAHelp;->access$400(Lcom/android/jrdsettings/dlna/DLNAHelp;)[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 166
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/dlna/DLNAHelp;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAHelp;->mViews:Ljava/util/List;
    invoke-static {v0}, Lcom/android/jrdsettings/dlna/DLNAHelp;->access$500(Lcom/android/jrdsettings/dlna/DLNAHelp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/android/jrdsettings/dlna/DLNAHelp$ViewPagerAdapter;->this$0:Lcom/android/jrdsettings/dlna/DLNAHelp;

    #getter for: Lcom/android/jrdsettings/dlna/DLNAHelp;->mViews:Ljava/util/List;
    invoke-static {v0}, Lcom/android/jrdsettings/dlna/DLNAHelp;->access$500(Lcom/android/jrdsettings/dlna/DLNAHelp;)Ljava/util/List;

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
    .line 177
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
    .line 183
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 193
    return-void
.end method
