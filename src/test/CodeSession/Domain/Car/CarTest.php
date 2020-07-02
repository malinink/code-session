<?php

declare(strict_types=1);

namespace CodeSession\Test\Domain\Car;

use CodeSession\Domain\Car\Car;
use PHPUnit\Framework\TestCase;

class CarTest extends TestCase
{
    public function testCarCreatesSuccessfully()
    {
        new Car(1,2,3);
    }
}
