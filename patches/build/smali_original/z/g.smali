.class public Lz/g;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field public static d:Lz/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz/g<",
            "*>;"
        }
    .end annotation
.end field

.field public static e:Lz/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lz/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final g:Ljava/lang/Object;

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/Exception;

.field public l:Z

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz/c<",
            "TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lz/b;->a:Lz/b;

    iget-object v1, v0, Lz/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 2
    sput-object v1, Lz/g;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    iget-object v0, v0, Lz/b;->c:Ljava/util/concurrent/Executor;

    .line 4
    sput-object v0, Lz/g;->b:Ljava/util/concurrent/Executor;

    .line 5
    sget-object v0, Lz/a;->a:Lz/a;

    iget-object v0, v0, Lz/a;->e:Ljava/util/concurrent/Executor;

    .line 6
    sput-object v0, Lz/g;->c:Ljava/util/concurrent/Executor;

    .line 7
    new-instance v0, Lz/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz/g;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lz/g;->d:Lz/g;

    .line 8
    new-instance v0, Lz/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lz/g;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lz/g;->e:Lz/g;

    .line 9
    new-instance v0, Lz/g;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lz/g;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lz/g;->f:Lz/g;

    .line 10
    new-instance v0, Lz/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz/g;-><init>(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz/g;->g:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz/g;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz/g;->g:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz/g;->m:Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1}, Lz/g;->h(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz/g;->g:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz/g;->m:Ljava/util/List;

    if-eqz p1, :cond_17

    .line 11
    invoke-virtual {p0}, Lz/g;->g()Z

    goto :goto_1b

    :cond_17
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lz/g;->h(Ljava/lang/Object;)Z

    :goto_1b
    return-void
.end method

.method public static a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lz/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lz/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lz/h;

    invoke-direct {v0}, Lz/h;-><init>()V

    .line 2
    :try_start_5
    new-instance v1, Lz/f;

    invoke-direct {v1, v0, p0}, Lz/f;-><init>(Lz/h;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    move-exception p0

    .line 3
    new-instance p1, Lbolts/ExecutorException;

    invoke-direct {p1, p0}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, p1}, Lz/h;->b(Ljava/lang/Exception;)V

    .line 4
    :goto_17
    iget-object p0, v0, Lz/h;->a:Lz/g;

    return-object p0
.end method

.method public static c(Ljava/lang/Exception;)Lz/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lz/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lz/g;

    invoke-direct {v0}, Lz/g;-><init>()V

    .line 2
    iget-object v1, v0, Lz/g;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_8
    iget-boolean v2, v0, Lz/g;->h:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_10

    .line 4
    monitor-exit v1

    goto :goto_20

    .line 5
    :cond_10
    iput-boolean v4, v0, Lz/g;->h:Z

    .line 6
    iput-object p0, v0, Lz/g;->k:Ljava/lang/Exception;

    .line 7
    iput-boolean v3, v0, Lz/g;->l:Z

    .line 8
    iget-object p0, v0, Lz/g;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    invoke-virtual {v0}, Lz/g;->f()V

    .line 10
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2b

    const/4 v3, 0x1

    :goto_20
    if-eqz v3, :cond_23

    return-object v0

    .line 11
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set the error on a completed task."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2b
    move-exception p0

    .line 12
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method


# virtual methods
.method public b(Lz/c;)Lz/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lz/c<",
            "TTResult;TTContinuationResult;>;)",
            "Lz/g<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lz/g;->b:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Lz/h;

    invoke-direct {v1}, Lz/h;-><init>()V

    .line 3
    iget-object v2, p0, Lz/g;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_a
    iget-object v3, p0, Lz/g;->g:Ljava/lang/Object;

    monitor-enter v3
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_37

    .line 5
    :try_start_d
    iget-boolean v4, p0, Lz/g;->h:Z

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_34

    if-nez v4, :cond_1c

    .line 6
    :try_start_12
    iget-object v3, p0, Lz/g;->m:Ljava/util/List;

    new-instance v5, Lz/d;

    invoke-direct {v5, p0, v1, p1, v0}, Lz/d;-><init>(Lz/g;Lz/h;Lz/c;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_37

    if-eqz v4, :cond_31

    .line 8
    :try_start_1f
    new-instance v2, Lz/e;

    invoke-direct {v2, v1, p1, p0}, Lz/e;-><init>(Lz/h;Lz/c;Lz/g;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_31

    :catch_28
    move-exception p1

    .line 9
    new-instance v0, Lbolts/ExecutorException;

    invoke-direct {v0, p1}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v1, v0}, Lz/h;->b(Ljava/lang/Exception;)V

    .line 10
    :cond_31
    :goto_31
    iget-object p1, v1, Lz/h;->a:Lz/g;

    return-object p1

    :catchall_34
    move-exception p1

    .line 11
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw p1

    :catchall_37
    move-exception p1

    .line 12
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public d()Ljava/lang/Exception;
    .locals 3

    .line 1
    iget-object v0, p0, Lz/g;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lz/g;->k:Ljava/lang/Exception;

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, p0, Lz/g;->l:Z

    .line 4
    :cond_a
    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lz/g;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {p0}, Lz/g;->d()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    :catchall_e
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lz/g;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lz/g;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz/c;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_27

    .line 3
    :try_start_15
    invoke-interface {v2, p0}, Lz/c;->a(Lz/g;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_18} :catch_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19
    .catchall {:try_start_15 .. :try_end_18} :catchall_27

    goto :goto_9

    :catch_19
    move-exception v1

    .line 4
    :try_start_1a
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_20
    move-exception v1

    .line 5
    throw v1

    :cond_22
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lz/g;->m:Ljava/util/List;

    .line 7
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_27

    throw v1
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lz/g;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lz/g;->h:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    .line 3
    monitor-exit v0

    return v1

    :cond_a
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lz/g;->h:Z

    .line 5
    iput-boolean v1, p0, Lz/g;->i:Z

    .line 6
    iget-object v2, p0, Lz/g;->g:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    invoke-virtual {p0}, Lz/g;->f()V

    .line 8
    monitor-exit v0

    return v1

    :catchall_19
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public h(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz/g;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Lz/g;->h:Z

    if-eqz v1, :cond_a

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    :cond_a
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lz/g;->h:Z

    .line 5
    iput-object p1, p0, Lz/g;->j:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lz/g;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    invoke-virtual {p0}, Lz/g;->f()V

    .line 8
    monitor-exit v0

    return v1

    :catchall_19
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method
