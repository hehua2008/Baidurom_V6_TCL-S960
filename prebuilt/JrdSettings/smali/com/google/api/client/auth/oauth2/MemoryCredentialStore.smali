.class public Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;
.super Ljava/lang/Object;
.source "MemoryCredentialStore.java"

# interfaces
.implements Lcom/google/api/client/auth/oauth2/CredentialStore;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final store:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->store:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 2
    .parameter "userId"
    .parameter "credential"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->store:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 59
    return-void

    .line 57
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public load(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)Z
    .locals 3
    .parameter "userId"
    .parameter "credential"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->store:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;

    .line 65
    .local v0, item:Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p2}, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;->load(Lcom/google/api/client/auth/oauth2/Credential;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    .line 68
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    .end local v0           #item:Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public store(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 3
    .parameter "userId"
    .parameter "credential"

    .prologue
    .line 39
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->store:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;

    .line 42
    .local v0, item:Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;

    .end local v0           #item:Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;
    invoke-direct {v0}, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;-><init>()V

    .line 44
    .restart local v0       #item:Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->store:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;->store(Lcom/google/api/client/auth/oauth2/Credential;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    return-void

    .line 48
    .end local v0           #item:Lcom/google/api/client/auth/oauth2/MemoryPersistedCredential;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/MemoryCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
