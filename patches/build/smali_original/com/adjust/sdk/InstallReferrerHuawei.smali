.class public Lcom/adjust/sdk/InstallReferrerHuawei;
.super Ljava/lang/Object;
.source "InstallReferrerHuawei.java"


# static fields
.field private static final REFERRER_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.huawei.appmarket.commondata"

.field private static final REFERRER_PROVIDER_URI:Ljava/lang/String; = "content://com.huawei.appmarket.commondata/item/5"


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private final referrerCallback:Lcom/adjust/sdk/InstallReferrerReadListener;

.field private final shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adjust/sdk/InstallReferrerReadListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/InstallReferrerHuawei;->logger:Lcom/adjust/sdk/ILogger;

    .line 3
    iput-object p1, p0, Lcom/adjust/sdk/InstallReferrerHuawei;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/adjust/sdk/InstallReferrerHuawei;->referrerCallback:Lcom/adjust/sdk/InstallReferrerReadListener;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/adjust/sdk/InstallReferrerHuawei;->shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public readReferrer()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 2
    iget-object v0, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->logger:Lcom/adjust/sdk/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Should not try to read Install referrer Huawei"

    invoke-interface {v0, v3, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_15
    iget-object v0, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->context:Landroid/content/Context;

    const-string v3, "com.huawei.appmarket.commondata"

    invoke-static {v0, v3}, Lcom/adjust/sdk/Util;->resolveContentProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    :cond_20
    const/4 v3, 0x0

    const-string v0, "content://com.huawei.appmarket.commondata/item/5"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    iget-object v4, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    .line 6
    iget-object v5, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    .line 7
    :try_start_3c
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_73

    .line 8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_73

    .line 9
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 12
    iget-object v6, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->logger:Lcom/adjust/sdk/ILogger;

    const-string v7, "InstallReferrerHuawei reads referrer[%s] clickTime[%s] installTime[%s]"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v12, v8, v2

    aput-object v0, v8, v10

    aput-object v5, v8, v4

    invoke-interface {v6, v7, v8}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 14
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 15
    iget-object v11, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->referrerCallback:Lcom/adjust/sdk/InstallReferrerReadListener;

    invoke-interface/range {v11 .. v16}, Lcom/adjust/sdk/InstallReferrerReadListener;->onInstallReferrerRead(Ljava/lang/String;JJ)V

    goto :goto_8a

    .line 16
    :cond_73
    iget-object v5, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->logger:Lcom/adjust/sdk/ILogger;

    const-string v6, "InstallReferrerHuawei fail to read referrer for package [%s] and content uri [%s]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-interface {v5, v6, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_8a} :catch_8f
    .catchall {:try_start_3c .. :try_end_8a} :catchall_8d

    :goto_8a
    if-eqz v3, :cond_a4

    goto :goto_a1

    :catchall_8d
    move-exception v0

    goto :goto_aa

    :catch_8f
    move-exception v0

    .line 17
    :try_start_90
    iget-object v4, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->logger:Lcom/adjust/sdk/ILogger;

    const-string v5, "InstallReferrerHuawei error [%s]"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9f
    .catchall {:try_start_90 .. :try_end_9f} :catchall_8d

    if-eqz v3, :cond_a4

    .line 18
    :goto_a1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 19
    :cond_a4
    iget-object v0, v1, Lcom/adjust/sdk/InstallReferrerHuawei;->shouldTryToRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_aa
    if-eqz v3, :cond_af

    .line 20
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_af
    throw v0
.end method
