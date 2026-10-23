.class public final synthetic Ld57;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld57;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Ld57;->b:Ljava/util/Set;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld57;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lorg/swiftapps/swiftbackup/home/schedule/data/ScheduleItem$AppsQuickActions$a;

    .line 8
    .line 9
    iget-object p0, p0, Ld57;->b:Ljava/util/Set;

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast p1, Lwa;

    .line 24
    .line 25
    const/4 p2, -0x1

    .line 26
    invoke-virtual {p1, p2}, Lwa;->f(I)Landroid/widget/Button;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    xor-int/lit8 p0, p0, 0x1

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
