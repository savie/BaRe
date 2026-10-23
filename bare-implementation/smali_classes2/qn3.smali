.class public final synthetic Lqn3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Lsn3;

.field public final synthetic b:Leo3;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lsn3;Leo3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqn3;->a:Lsn3;

    .line 5
    .line 6
    iput-object p2, p0, Lqn3;->b:Leo3;

    .line 7
    .line 8
    iput p3, p0, Lqn3;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lqn3;->a:Lsn3;

    .line 8
    .line 9
    iget-object v1, v1, Lsn3;->a:Lqp3;

    .line 10
    .line 11
    new-instance v2, Lr62;

    .line 12
    .line 13
    iget-object v3, p0, Lqn3;->b:Leo3;

    .line 14
    .line 15
    check-cast v3, Ldo3;

    .line 16
    .line 17
    iget-object v3, v3, Ldo3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 18
    .line 19
    invoke-virtual {v3}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, p1, v3}, Lr62;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lpw6;->k(Lr62;)V

    .line 27
    .line 28
    .line 29
    iget p0, p0, Lqn3;->c:I

    .line 30
    .line 31
    add-int/2addr p0, v0

    .line 32
    invoke-virtual {v1, p0}, Lpw6;->n(I)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lbe8;->a:Lbe8;

    .line 36
    .line 37
    return-object p0
.end method
