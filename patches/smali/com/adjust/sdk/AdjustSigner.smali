.class public Lcom/adjust/sdk/AdjustSigner;
.super Ljava/lang/Object;
.source "AdjustSigner.java"


# static fields
.field private static volatile signerInstance:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableSigning(Lcom/adjust/sdk/ILogger;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/adjust/sdk/AdjustSigner;->getSignerInstance()V

    .line 2
    sget-object v0, Lcom/adjust/sdk/AdjustSigner;->signerInstance:Ljava/lang/Object;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 3
    :try_start_9
    sget-object v1, Lcom/adjust/sdk/AdjustSigner;->signerInstance:Ljava/lang/Object;

    const-string v2, "disableSigning"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_23

    :catch_14
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Invoking Signer disableSigning() received an error [%s]"

    invoke-interface {p0, v0, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_23
    return-void
.end method

.method public static enableSigning(Lcom/adjust/sdk/ILogger;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/adjust/sdk/AdjustSigner;->getSignerInstance()V

    .line 2
    sget-object v0, Lcom/adjust/sdk/AdjustSigner;->signerInstance:Ljava/lang/Object;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 3
    :try_start_9
    sget-object v1, Lcom/adjust/sdk/AdjustSigner;->signerInstance:Ljava/lang/Object;

    const-string v2, "enableSigning"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_23

    :catch_14
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Invoking Signer enableSigning() received an error [%s]"

    invoke-interface {p0, v0, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_23
    return-void
.end method

.method private static getSignerInstance()V
    .locals 2

    .line 1
    sget-object v0, Lcom/adjust/sdk/AdjustSigner;->signerInstance:Ljava/lang/Object;

    if-nez v0, :cond_18

    .line 2
    const-class v0, Lcom/adjust/sdk/AdjustSigner;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/adjust/sdk/AdjustSigner;->signerInstance:Ljava/lang/Object;

    if-nez v1, :cond_13

    const-string v1, "com.adjust.sdk.sig.Signer"

    .line 4
    invoke-static {v1}, Lcom/adjust/sdk/Reflection;->createDefaultInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/adjust/sdk/AdjustSigner;->signerInstance:Ljava/lang/Object;

    .line 5
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1

    :cond_18
    :goto_18
    return-void
.end method

.method public static onResume(Lcom/adjust/sdk/ILogger;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/adjust/sdk/AdjustSigner;->getSignerInstance()V

    .line 2
    sget-object v0, Lcom/adjust/sdk/AdjustSigner;->signerInstance:Ljava/lang/Object;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 3
    :try_start_9
    sget-object v1, Lcom/adjust/sdk/AdjustSigner;->signerInstance:Ljava/lang/Object;

    const-string/jumbo v2, "onResume"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_24

    :catch_15
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Invoking Signer onResume() received an error [%s]"

    invoke-interface {p0, v0, v2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_24
    return-void
.end method

.method public static sign(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/adjust/sdk/ILogger;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/adjust/sdk/ILogger;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-static {}, Lcom/adjust/sdk/AdjustSigner;->getSignerInstance()V

    .line 2
    sget-object v1, Lcom/adjust/sdk/AdjustSigner;->signerInstance:Ljava/lang/Object;

    if-nez v1, :cond_a

    return-void

    :cond_a
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 3
    :try_start_d
    sget-object v4, Lcom/adjust/sdk/AdjustSigner;->signerInstance:Ljava/lang/Object;

    const-string/jumbo v5, "sign"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v2

    const-class v8, Ljava/util/Map;

    aput-object v8, v7, v1

    aput-object v0, v7, v3

    const/4 v8, 0x3

    aput-object v0, v7, v8

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p0, v0, v1

    aput-object p1, v0, v3

    aput-object p2, v0, v8

    invoke-static {v4, v5, v7, v0}, Lcom/adjust/sdk/Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2f} :catch_30

    goto :goto_40

    :catch_30
    move-exception p0

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "Invoking Signer sign() for %s received an error [%s]"

    invoke-interface {p4, p0, p2}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_40
    return-void
.end method
