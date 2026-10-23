.class public final Lky1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/nio/file/FileVisitor;


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Lgb;

.field public final b:Lgy1;

.field public final c:Liu7;

.field public final d:Lob8;

.field public final e:Ljava/util/function/UnaryOperator;


# direct methods
.method public constructor <init>(Ljy1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgb;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lgb;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lky1;->a:Lgb;

    .line 12
    .line 13
    iget-object v0, p1, Ljy1;->k:Lgy1;

    .line 14
    .line 15
    iput-object v0, p0, Lky1;->b:Lgy1;

    .line 16
    .line 17
    iget-object v0, p1, Ljy1;->n:Liu7;

    .line 18
    .line 19
    iput-object v0, p0, Lky1;->c:Liu7;

    .line 20
    .line 21
    iget-object v0, p1, Ljy1;->p:Lob8;

    .line 22
    .line 23
    iput-object v0, p0, Lky1;->d:Lob8;

    .line 24
    .line 25
    iget-object p1, p1, Ljy1;->q:Ljava/util/function/UnaryOperator;

    .line 26
    .line 27
    iput-object p1, p0, Lky1;->e:Ljava/util/function/UnaryOperator;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lky1;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lky1;

    .line 12
    .line 13
    iget-object p0, p0, Lky1;->b:Lgy1;

    .line 14
    .line 15
    iget-object p1, p1, Lky1;->b:Lgy1;

    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lky1;->b:Lgy1;

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 2

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    iget-object p2, p0, Lky1;->e:Ljava/util/function/UnaryOperator;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/nio/file/Path;

    .line 10
    .line 11
    iget-object p0, p0, Lky1;->b:Lgy1;

    .line 12
    .line 13
    iget-object p0, p0, Lgy1;->b:Lfy1;

    .line 14
    .line 15
    iget-wide p1, p0, Lfy1;->a:J

    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    add-long/2addr p1, v0

    .line 20
    iput-wide p1, p0, Lfy1;->a:J

    .line 21
    .line 22
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 23
    .line 24
    return-object p0
.end method

.method public final preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    iget-object p0, p0, Lky1;->d:Lob8;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 9
    .line 10
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lky1;->b:Lgy1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 4

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lky1;->c:Liu7;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Liu7;->a(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 19
    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lky1;->b:Lgy1;

    .line 23
    .line 24
    iget-object p1, p0, Lgy1;->c:Lfy1;

    .line 25
    .line 26
    iget-wide v0, p1, Lfy1;->a:J

    .line 27
    .line 28
    const-wide/16 v2, 0x1

    .line 29
    .line 30
    add-long/2addr v0, v2

    .line 31
    iput-wide v0, p1, Lfy1;->a:J

    .line 32
    .line 33
    iget-object p0, p0, Lgy1;->a:Lfy1;

    .line 34
    .line 35
    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    iget-wide v0, p0, Lfy1;->a:J

    .line 40
    .line 41
    add-long/2addr v0, p1

    .line 42
    iput-wide v0, p0, Lfy1;->a:J

    .line 43
    .line 44
    :cond_0
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 45
    .line 46
    return-object p0
.end method

.method public final visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    iget-object p0, p0, Lky1;->a:Lgb;

    .line 4
    .line 5
    iget-object p0, p0, Lgb;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lky1;

    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Ljava/nio/file/SimpleFileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
