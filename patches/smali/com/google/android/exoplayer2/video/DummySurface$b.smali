.class public Lcom/google/android/exoplayer2/video/DummySurface$b;
.super Landroid/os/HandlerThread;
.source "DummySurface.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public j:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

.field public k:Landroid/os/Handler;

.field public l:Ljava/lang/Error;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Lcom/google/android/exoplayer2/video/DummySurface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ExoPlayer:DummySurface"

    .line 1
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$b;->j:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$b;->j:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v4

    const/4 v12, 0x0

    if-eqz v4, :cond_e9

    const/4 v13, 0x2

    new-array v5, v13, [I

    const/4 v14, 0x1

    .line 6
    invoke-static {v4, v5, v3, v5, v14}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 7
    iput-object v4, v2, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    new-array v15, v14, [Landroid/opengl/EGLConfig;

    new-array v11, v14, [I

    .line 8
    sget-object v5, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->j:[I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v16, 0x0

    move-object v7, v15

    move-object v10, v11

    move-object/from16 v17, v11

    move/from16 v11, v16

    .line 9
    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_c1

    .line 10
    aget v6, v17, v3

    if-lez v6, :cond_c1

    aget-object v6, v15, v3

    if-eqz v6, :cond_c1

    .line 11
    aget-object v4, v15, v3

    .line 12
    iget-object v6, v2, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    const/4 v7, 0x5

    if-nez v1, :cond_4f

    new-array v5, v5, [I

    .line 13
    fill-array-data v5, :array_f2

    goto :goto_54

    :cond_4f
    new-array v5, v7, [I

    .line 14
    fill-array-data v5, :array_fc

    .line 15
    :goto_54
    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 16
    invoke-static {v6, v4, v8, v5, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v5

    if-eqz v5, :cond_b9

    .line 17
    iput-object v5, v2, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->n:Landroid/opengl/EGLContext;

    .line 18
    iget-object v6, v2, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    if-ne v1, v14, :cond_65

    .line 19
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_79

    :cond_65
    if-ne v1, v13, :cond_6e

    const/4 v7, 0x7

    new-array v7, v7, [I

    .line 20
    fill-array-data v7, :array_10a

    goto :goto_73

    :cond_6e
    new-array v7, v7, [I

    .line 21
    fill-array-data v7, :array_11c

    .line 22
    :goto_73
    invoke-static {v6, v4, v7, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v4

    if-eqz v4, :cond_b1

    .line 23
    :goto_79
    invoke-static {v6, v4, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 24
    iput-object v4, v2, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->o:Landroid/opengl/EGLSurface;

    .line 25
    iget-object v4, v2, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->l:[I

    .line 26
    invoke-static {v14, v4, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 27
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->a()V

    .line 28
    new-instance v4, Landroid/graphics/SurfaceTexture;

    iget-object v5, v2, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->l:[I

    aget v5, v5, v3

    invoke-direct {v4, v5}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v4, v2, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->p:Landroid/graphics/SurfaceTexture;

    .line 29
    invoke-virtual {v4, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 30
    new-instance v2, Lcom/google/android/exoplayer2/video/DummySurface;

    iget-object v4, v0, Lcom/google/android/exoplayer2/video/DummySurface$b;->j:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    .line 31
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->p:Landroid/graphics/SurfaceTexture;

    .line 32
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_a3

    const/4 v3, 0x1

    .line 33
    :cond_a3
    invoke-direct {v2, v0, v4, v3, v12}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$b;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$a;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$b;->n:Lcom/google/android/exoplayer2/video/DummySurface;

    return-void

    .line 34
    :cond_a9
    new-instance v1, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;

    const-string v2, "eglMakeCurrent failed"

    invoke-direct {v1, v2, v12}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$a;)V

    throw v1

    .line 35
    :cond_b1
    new-instance v1, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;

    const-string v2, "eglCreatePbufferSurface failed"

    invoke-direct {v1, v2, v12}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$a;)V

    throw v1

    .line 36
    :cond_b9
    new-instance v1, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;

    const-string v2, "eglCreateContext failed"

    invoke-direct {v1, v2, v12}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$a;)V

    throw v1

    .line 37
    :cond_c1
    new-instance v1, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;

    new-array v2, v5, [Ljava/lang/Object;

    .line 38
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    aget v4, v17, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v14

    aget-object v3, v15, v3

    aput-object v3, v2, v13

    const-string v3, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    .line 39
    invoke-static {v3, v2}, Lb/i/a/c/f3/e0;->k(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v12}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$a;)V

    throw v1

    .line 40
    :cond_e1
    new-instance v1, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2, v12}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$a;)V

    throw v1

    .line 41
    :cond_e9
    new-instance v1, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;

    const-string v2, "eglGetDisplay failed"

    invoke-direct {v1, v2, v12}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/EGLSurfaceTexture$a;)V

    throw v1

    nop

    :array_f2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_fc
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_10a
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_11c
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->j:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->j:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v1, 0x13

    const/4 v2, 0x0

    .line 5
    :try_start_f
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->p:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_1d

    .line 6
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v3, 0x1

    .line 7
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->l:[I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_6f

    .line 8
    :cond_1d
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    if-eqz v3, :cond_32

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 9
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 10
    :cond_32
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->o:Landroid/opengl/EGLSurface;

    if-eqz v3, :cond_45

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 11
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    iget-object v4, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->o:Landroid/opengl/EGLSurface;

    invoke-static {v3, v4}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 12
    :cond_45
    iget-object v3, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->n:Landroid/opengl/EGLContext;

    if-eqz v3, :cond_4e

    .line 13
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 14
    :cond_4e
    sget v3, Lb/i/a/c/f3/e0;->a:I

    if-lt v3, v1, :cond_55

    .line 15
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 16
    :cond_55
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_66

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 17
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 18
    :cond_66
    iput-object v2, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    .line 19
    iput-object v2, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->n:Landroid/opengl/EGLContext;

    .line 20
    iput-object v2, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->o:Landroid/opengl/EGLSurface;

    .line 21
    iput-object v2, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->p:Landroid/graphics/SurfaceTexture;

    return-void

    :catchall_6f
    move-exception v3

    .line 22
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    if-eqz v4, :cond_85

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v4, v5}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 23
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v4, v5, v5, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 24
    :cond_85
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->o:Landroid/opengl/EGLSurface;

    if-eqz v4, :cond_98

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v4, v5}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_98

    .line 25
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->o:Landroid/opengl/EGLSurface;

    invoke-static {v4, v5}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 26
    :cond_98
    iget-object v4, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->n:Landroid/opengl/EGLContext;

    if-eqz v4, :cond_a1

    .line 27
    iget-object v5, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    invoke-static {v5, v4}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 28
    :cond_a1
    sget v4, Lb/i/a/c/f3/e0;->a:I

    if-lt v4, v1, :cond_a8

    .line 29
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 30
    :cond_a8
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    if-eqz v1, :cond_b9

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 31
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 32
    :cond_b9
    iput-object v2, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->m:Landroid/opengl/EGLDisplay;

    .line 33
    iput-object v2, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->n:Landroid/opengl/EGLContext;

    .line 34
    iput-object v2, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->o:Landroid/opengl/EGLSurface;

    .line 35
    iput-object v2, v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->p:Landroid/graphics/SurfaceTexture;

    .line 36
    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    return v1

    .line 2
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$b;->b()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    .line 3
    :goto_c
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_19

    :catchall_10
    move-exception p1

    :try_start_11
    const-string v0, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    .line 4
    invoke-static {v0, v2, p1}, Lb/i/a/c/f3/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    goto :goto_c

    :goto_19
    return v1

    :catchall_1a
    move-exception p1

    .line 5
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    throw p1

    .line 7
    :cond_1f
    :try_start_1f
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/DummySurface$b;->a(I)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_24} :catch_42
    .catch Ljava/lang/Error; {:try_start_1f .. :try_end_24} :catch_2f
    .catchall {:try_start_1f .. :try_end_24} :catchall_2d

    .line 8
    monitor-enter p0

    .line 9
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 10
    monitor-exit p0

    goto :goto_51

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw p1

    :catchall_2d
    move-exception p1

    goto :goto_55

    :catch_2f
    move-exception p1

    :try_start_30
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 11
    invoke-static {v0, v2, p1}, Lb/i/a/c/f3/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->l:Ljava/lang/Error;
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2d

    .line 13
    monitor-enter p0

    .line 14
    :try_start_3a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 15
    monitor-exit p0

    goto :goto_51

    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    throw p1

    :catch_42
    move-exception p1

    :try_start_43
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 16
    invoke-static {v0, v2, p1}, Lb/i/a/c/f3/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface$b;->m:Ljava/lang/RuntimeException;
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_2d

    .line 18
    monitor-enter p0

    .line 19
    :try_start_4d
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 20
    monitor-exit p0

    :goto_51
    return v1

    :catchall_52
    move-exception p1

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_52

    throw p1

    .line 21
    :goto_55
    monitor-enter p0

    .line 22
    :try_start_56
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 23
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5b

    .line 24
    throw p1

    :catchall_5b
    move-exception p1

    .line 25
    :try_start_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw p1
.end method
