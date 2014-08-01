.class abstract Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;
.super Ljava/lang/Object;
.source "KeyguardWidgetEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "WeakReferenceThreadLocal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;)V
    .locals 1
    .parameter

    .prologue
    .line 819
    .local p0, this:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;,"Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal<TT;>;"
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->this$1:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->mThreadLocal:Ljava/lang/ThreadLocal;

    .line 821
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 830
    .local p0, this:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;,"Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal<TT;>;"
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->mThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 832
    .local v2, reference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    if-nez v2, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v0

    .line 834
    .local v0, obj:Ljava/lang/Object;,"TT;"
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->mThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v1, v0

    .line 842
    .end local v0           #obj:Ljava/lang/Object;,"TT;"
    .local v1, obj:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v1

    .line 837
    .end local v1           #obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 838
    .restart local v0       #obj:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_1

    .line 839
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->initialValue()Ljava/lang/Object;

    move-result-object v0

    .line 840
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->mThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    move-object v1, v0

    .line 842
    .end local v0           #obj:Ljava/lang/Object;,"TT;"
    .restart local v1       #obj:Ljava/lang/Object;,"TT;"
    goto :goto_0
.end method

.method abstract initialValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 826
    .local p0, this:Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;,"Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/android/jrdsettings/KeyguardWidgetEditActivity$JrdAppWidgetLoader$WeakReferenceThreadLocal;->mThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 827
    return-void
.end method
