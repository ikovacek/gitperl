package Person;
use strict;
use 5.010;
sub new {
    my $class = shift;
    my $self = {@_};
    bless $self,$class;
    return $self;
}

sub name{
    my $self = shift;
    $self->{"name"} = shift if @_;
    $self->{"name"};
}

sub parent {
    my $self = shift;
    $self->{parent} = shift if @_;
    $self->{parent};
}

sub print {
    my $self = shift;
    say "Data:";
    while( my ($key,$val) = each %$self){
        say "$key => $val";
    }
    say "Parent name:". $self->{parent}->name if defined $self->{parent};


}

package Kid;
our @ISA ="Person";
sub new {
    my $class = shift;
    my $self = { @_ };
    bless $self,$class;
    
}

sub favoriteToy {
    my $self = shift;
    if(@_) {$self->{favoriteToy} = shift};
    $self->{favoriteToy};
}

sub kidprint{
    my $self = shift;
    say "KidPrint!";
    $self->print;
    say "Toy: ". $self->{favoriteToy};
}

1
