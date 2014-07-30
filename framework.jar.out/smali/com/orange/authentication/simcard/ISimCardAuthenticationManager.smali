.class public interface abstract Lcom/orange/authentication/simcard/ISimCardAuthenticationManager;
.super Ljava/lang/Object;
.source "ISimCardAuthenticationManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/ISimCardAuthenticationManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract akaAuthentication([B[BLjava/util/List;)Lcom/orange/authentication/simcard/AkaAuthenticationResultImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkPermission(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSimCardType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract gsmAuthentication([B)Lcom/orange/authentication/simcard/GsmAuthenticationResultImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
