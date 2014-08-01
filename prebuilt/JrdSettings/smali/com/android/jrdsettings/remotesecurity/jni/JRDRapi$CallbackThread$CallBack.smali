.class abstract Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$CallBack;
.super Ljava/lang/Object;
.source "JRDRapi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CallBack"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$CallBack;->this$1:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract c()V
.end method
