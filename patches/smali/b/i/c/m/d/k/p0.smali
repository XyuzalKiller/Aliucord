.class public Lb/i/c/m/d/k/p0;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/i/c/m/d/k/p0$a;
    }
.end annotation


# instance fields
.field public final a:Lb/i/c/m/d/k/p0$a;

.field public final b:Lb/i/c/m/d/s/d;

.field public final c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lb/i/c/m/d/k/p0$a;Lb/i/c/m/d/s/d;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/i/c/m/d/k/p0;->a:Lb/i/c/m/d/k/p0$a;

    .line 3
    iput-object p2, p0, Lb/i/c/m/d/k/p0;->b:Lb/i/c/m/d/s/d;

    .line 4
    iput-object p3, p0, Lb/i/c/m/d/k/p0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lb/i/c/m/d/k/p0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lb/i/c/m/d/k/p0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    const-string v1, "Crashlytics completed exception processing. Invoking default exception handler."

    if-nez p1, :cond_15

    .line 2
    :try_start_b
    sget-object v2, Lb/i/c/m/d/b;->a:Lb/i/c/m/d/b;

    const-string v3, "Could not handle uncaught exception; null thread"

    invoke-virtual {v2, v3}, Lb/i/c/m/d/b;->d(Ljava/lang/String;)V

    goto :goto_28

    :catch_13
    move-exception v2

    goto :goto_3a

    :cond_15
    if-nez p2, :cond_1f

    .line 3
    sget-object v2, Lb/i/c/m/d/b;->a:Lb/i/c/m/d/b;

    const-string v3, "Could not handle uncaught exception; null throwable"

    invoke-virtual {v2, v3}, Lb/i/c/m/d/b;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 4
    :cond_1f
    iget-object v2, p0, Lb/i/c/m/d/k/p0;->a:Lb/i/c/m/d/k/p0$a;

    iget-object v3, p0, Lb/i/c/m/d/k/p0;->b:Lb/i/c/m/d/s/d;

    check-cast v2, Lb/i/c/m/d/k/b0;

    invoke-virtual {v2, v3, p1, p2}, Lb/i/c/m/d/k/b0;->a(Lb/i/c/m/d/s/d;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_13
    .catchall {:try_start_b .. :try_end_28} :catchall_38

    .line 5
    :goto_28
    sget-object v2, Lb/i/c/m/d/b;->a:Lb/i/c/m/d/b;

    .line 6
    invoke-virtual {v2, v1}, Lb/i/c/m/d/b;->b(Ljava/lang/String;)V

    .line 7
    :goto_2d
    iget-object v1, p0, Lb/i/c/m/d/k/p0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 8
    iget-object p1, p0, Lb/i/c/m/d/k/p0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4e

    :catchall_38
    move-exception v2

    goto :goto_4f

    .line 9
    :goto_3a
    :try_start_3a
    sget-object v3, Lb/i/c/m/d/b;->a:Lb/i/c/m/d/b;

    const-string v4, "An error occurred in the uncaught exception handler"

    const/4 v5, 0x6

    .line 10
    invoke-virtual {v3, v5}, Lb/i/c/m/d/b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4a

    const-string v5, "FirebaseCrashlytics"

    .line 11
    invoke-static {v5, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_38

    .line 12
    :cond_4a
    invoke-virtual {v3, v1}, Lb/i/c/m/d/b;->b(Ljava/lang/String;)V

    goto :goto_2d

    :goto_4e
    return-void

    .line 13
    :goto_4f
    sget-object v3, Lb/i/c/m/d/b;->a:Lb/i/c/m/d/b;

    .line 14
    invoke-virtual {v3, v1}, Lb/i/c/m/d/b;->b(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lb/i/c/m/d/k/p0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Lb/i/c/m/d/k/p0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    throw v2
.end method
