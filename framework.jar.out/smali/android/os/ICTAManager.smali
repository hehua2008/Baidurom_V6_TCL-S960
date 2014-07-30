.class public interface abstract Landroid/os/ICTAManager;
.super Ljava/lang/Object;
.source "ICTAManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ICTAManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract CheckAgain(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract CheckRight(ILjava/lang/String;Ljava/lang/CharSequence;IZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract toastNotify(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
