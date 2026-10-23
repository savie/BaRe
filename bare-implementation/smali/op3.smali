.class public final Lop3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;

.field public final p:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/listitem/ListItemLayout;Lorg/swiftapps/swiftbackup/views/MCheckBox;Landroid/view/View;Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lop3;->a:Ljava/lang/Object;

    .line 39
    iput-object p2, p0, Lop3;->b:Ljava/lang/Object;

    .line 40
    iput-object p3, p0, Lop3;->c:Ljava/lang/Object;

    .line 41
    iput-object p4, p0, Lop3;->e:Ljava/lang/Object;

    .line 42
    iput-object p5, p0, Lop3;->f:Ljava/lang/Object;

    .line 43
    iput-object p6, p0, Lop3;->d:Ljava/lang/Object;

    .line 44
    iput-object p7, p0, Lop3;->k:Ljava/lang/Object;

    .line 45
    iput-object p8, p0, Lop3;->n:Ljava/lang/Object;

    .line 46
    iput-object p9, p0, Lop3;->p:Ljava/lang/Object;

    .line 47
    iput-object p10, p0, Lop3;->q:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lq63;Ljava/util/List;Liu;Lf27;Lcy0;Lod2;Ljava/lang/String;Liz6;Lbt3;Lc07;I)V
    .locals 2

    and-int/lit8 v0, p11, 0x40

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p7, v1

    :cond_0
    and-int/lit16 v0, p11, 0x100

    if-eqz v0, :cond_1

    .line 48
    new-instance p9, Lb7;

    const/4 v0, 0x3

    invoke-direct {p9, v0}, Lb7;-><init>(I)V

    :cond_1
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_2

    move-object p10, v1

    .line 49
    :cond_2
    invoke-direct/range {p0 .. p10}, Lop3;-><init>(Lq63;Ljava/util/List;Liu;Lf27;Lcy0;Lod2;Ljava/lang/String;Liz6;Lbt3;Lh07;)V

    return-void
.end method

.method public constructor <init>(Lq63;Ljava/util/List;Liu;Lf27;Lcy0;Lod2;Ljava/lang/String;Liz6;Lbt3;Lh07;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lop3;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p2, p0, Lop3;->b:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p3, p0, Lop3;->c:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p4, p0, Lop3;->d:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p5, p0, Lop3;->e:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p6, p0, Lop3;->f:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p7, p0, Lop3;->k:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object p8, p0, Lop3;->n:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p9, p0, Lop3;->p:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p10, p0, Lop3;->q:Ljava/lang/Object;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lop3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/material/listitem/ListItemLayout;

    .line 4
    .line 5
    return-object p0
.end method
