.class public final Lkv2;
.super Ltb1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final i:Lkv2;


# instance fields
.field public final g:Ldd1;

.field public final h:Ljava/lang/UnsupportedOperationException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkv2;

    .line 2
    .line 3
    invoke-direct {v0}, Lkv2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkv2;->i:Lkv2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ldd1;->GoogleDrive:Ldd1;

    .line 5
    .line 6
    iput-object v0, p0, Lkv2;->g:Ldd1;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    const-string v1, "EmptyClient cannot perform any operation"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lkv2;->h:Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final b(Lzv1;)Lxh2;
    .locals 0

    .line 1
    iget-object p0, p0, Lkv2;->h:Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    throw p0
.end method

.method public final c(Lfo2;)Lno2;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lkv2;->h:Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    throw p0
.end method

.method public final d(Lrf8;)Lag8;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lkv2;->h:Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    throw p0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkv2;->h:Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    throw p0
.end method

.method public final f()Lui1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkv2;->h:Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    throw p0
.end method

.method public final g()Ldd1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkv2;->g:Ldd1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "EmptyClient"

    .line 2
    .line 3
    return-object p0
.end method

.method public final j()Lui1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkv2;->h:Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    throw p0
.end method

.method public final k()Lui1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkv2;->h:Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    throw p0
.end method

.method public final l()Lui1;
    .locals 0

    .line 1
    iget-object p0, p0, Lkv2;->h:Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    throw p0
.end method

.method public final m()Ljm1;
    .locals 1

    .line 1
    new-instance v0, Lxa1;

    .line 2
    .line 3
    iget-object p0, p0, Lkv2;->h:Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lxa1;-><init>(Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final n()Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;
    .locals 2

    .line 1
    new-instance v0, Loi1;

    .line 2
    .line 3
    iget-object p0, p0, Lkv2;->h:Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1}, Loi1;-><init>(Ljava/lang/Exception;Z)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
